# Connection


### Available Operations

* [create_unified_connection](#create_unified_connection) - Create connection
* [get_unified_connection](#get_unified_connection) - Retrieve connection
* [list_unified_connections](#list_unified_connections) - List all connections
* [patch_unified_connection](#patch_unified_connection) - Update connection
* [remove_unified_connection](#remove_unified_connection) - Remove connection
* [update_unified_connection](#update_unified_connection) - Update connection

## create_unified_connection

Create connection

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new


req = ::UnifiedRubySDK::Shared::Connection.new(
  categories: [
    ::UnifiedRubySDK::Shared::PropertyConnectionCategories::COMMERCE,
  ],
  integration_type: "<value>",
  permissions: [
    ::UnifiedRubySDK::Shared::PropertyConnectionPermissions::ATS_CANDIDATE_READ,
  ],
)
    
res = s.connection.create_unified_connection(req, ::UnifiedRubySDK::Operations::CreateUnifiedConnectionSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ))

if ! res.connection.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                   | Type                                                                                                                        | Required                                                                                                                    | Description                                                                                                                 |
| --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                   | [::UnifiedRubySDK::Shared::Connection](../../models/shared/connection.md)                                                   | :heavy_check_mark:                                                                                                          | The request object to use for the request.                                                                                  |
| `security`                                                                                                                  | [::UnifiedRubySDK::Operations::CreateUnifiedConnectionSecurity](../../models/operations/createunifiedconnectionsecurity.md) | :heavy_check_mark:                                                                                                          | The security requirements to use for the request.                                                                           |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateUnifiedConnectionResponse)](../../models/operations/createunifiedconnectionresponse.md)**


## get_unified_connection

Retrieve connection

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.connection.get_unified_connection(::UnifiedRubySDK::Operations::GetUnifiedConnectionSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), id="<value>")

if ! res.connection.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                            | [::UnifiedRubySDK::Operations::GetUnifiedConnectionSecurity](../../models/operations/getunifiedconnectionsecurity.md) | :heavy_check_mark:                                                                                                    | The security requirements to use for the request.                                                                     |
| `id`                                                                                                                  | *::String*                                                                                                            | :heavy_check_mark:                                                                                                    | ID of the Connection                                                                                                  |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetUnifiedConnectionResponse)](../../models/operations/getunifiedconnectionresponse.md)**


## list_unified_connections

List all connections

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new


req = ::UnifiedRubySDK::Operations::ListUnifiedConnectionsRequest.new()
    
res = s.connection.list_unified_connections(req, ::UnifiedRubySDK::Operations::ListUnifiedConnectionsSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ))

if ! res.connections.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                 | Type                                                                                                                      | Required                                                                                                                  | Description                                                                                                               |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                 | [::UnifiedRubySDK::Operations::ListUnifiedConnectionsRequest](../../models/operations/listunifiedconnectionsrequest.md)   | :heavy_check_mark:                                                                                                        | The request object to use for the request.                                                                                |
| `security`                                                                                                                | [::UnifiedRubySDK::Operations::ListUnifiedConnectionsSecurity](../../models/operations/listunifiedconnectionssecurity.md) | :heavy_check_mark:                                                                                                        | The security requirements to use for the request.                                                                         |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListUnifiedConnectionsResponse)](../../models/operations/listunifiedconnectionsresponse.md)**


## patch_unified_connection

Update connection

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.connection.patch_unified_connection(::UnifiedRubySDK::Operations::PatchUnifiedConnectionSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), id="<value>", connection=::UnifiedRubySDK::Shared::Connection.new(
    categories: [
      ::UnifiedRubySDK::Shared::PropertyConnectionCategories::TICKETING,
    ],
    integration_type: "<value>",
    permissions: [
      ::UnifiedRubySDK::Shared::PropertyConnectionPermissions::CRM_LEAD_WRITE,
    ],
  ))

if ! res.connection.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                 | Type                                                                                                                      | Required                                                                                                                  | Description                                                                                                               |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                | [::UnifiedRubySDK::Operations::PatchUnifiedConnectionSecurity](../../models/operations/patchunifiedconnectionsecurity.md) | :heavy_check_mark:                                                                                                        | The security requirements to use for the request.                                                                         |
| `id`                                                                                                                      | *::String*                                                                                                                | :heavy_check_mark:                                                                                                        | ID of the Connection                                                                                                      |
| `connection`                                                                                                              | [::UnifiedRubySDK::Shared::Connection](../../models/shared/connection.md)                                                 | :heavy_minus_sign:                                                                                                        | A connection represents a specific authentication of an integration.                                                      |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchUnifiedConnectionResponse)](../../models/operations/patchunifiedconnectionresponse.md)**


## remove_unified_connection

Remove connection

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.connection.remove_unified_connection(::UnifiedRubySDK::Operations::RemoveUnifiedConnectionSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), id="<value>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                   | Type                                                                                                                        | Required                                                                                                                    | Description                                                                                                                 |
| --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                  | [::UnifiedRubySDK::Operations::RemoveUnifiedConnectionSecurity](../../models/operations/removeunifiedconnectionsecurity.md) | :heavy_check_mark:                                                                                                          | The security requirements to use for the request.                                                                           |
| `id`                                                                                                                        | *::String*                                                                                                                  | :heavy_check_mark:                                                                                                          | ID of the Connection                                                                                                        |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveUnifiedConnectionResponse)](../../models/operations/removeunifiedconnectionresponse.md)**


## update_unified_connection

Update connection

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.connection.update_unified_connection(::UnifiedRubySDK::Operations::UpdateUnifiedConnectionSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), id="<value>", connection=::UnifiedRubySDK::Shared::Connection.new(
    categories: [
      ::UnifiedRubySDK::Shared::PropertyConnectionCategories::ACCOUNTING,
    ],
    integration_type: "<value>",
    permissions: [
      ::UnifiedRubySDK::Shared::PropertyConnectionPermissions::ATS_COMPANY_READ,
    ],
  ))

if ! res.connection.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                   | Type                                                                                                                        | Required                                                                                                                    | Description                                                                                                                 |
| --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                  | [::UnifiedRubySDK::Operations::UpdateUnifiedConnectionSecurity](../../models/operations/updateunifiedconnectionsecurity.md) | :heavy_check_mark:                                                                                                          | The security requirements to use for the request.                                                                           |
| `id`                                                                                                                        | *::String*                                                                                                                  | :heavy_check_mark:                                                                                                          | ID of the Connection                                                                                                        |
| `connection`                                                                                                                | [::UnifiedRubySDK::Shared::Connection](../../models/shared/connection.md)                                                   | :heavy_minus_sign:                                                                                                          | A connection represents a specific authentication of an integration.                                                        |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateUnifiedConnectionResponse)](../../models/operations/updateunifiedconnectionresponse.md)**

