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
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Shared::Connection.new(
  auth=Shared::PropertyConnectionAuth.new(
    emails=[
      "string",
    ],
    meta=Shared::PropertyPropertyConnectionAuthMeta.new(),
    other_auth_info=[
      "string",
    ],
  ),
  categories=[
    Shared::PropertyConnectionCategories::ACCOUNTING,
  ],
  cursors_cache=[
    Shared::Undefined.new(),
  ],
  integration_type="string",
  permissions=[
    Shared::PropertyConnectionPermissions::ATS_DOCUMENT_WRITE,
  ],
)
    
res = s.connection.create_unified_connection(req)

if ! res.connection.nil?
  # handle response
end

```

### Parameters

| Parameter                                               | Type                                                    | Required                                                | Description                                             |
| ------------------------------------------------------- | ------------------------------------------------------- | ------------------------------------------------------- | ------------------------------------------------------- |
| `request`                                               | [Shared::Connection](../../models/shared/connection.md) | :heavy_check_mark:                                      | The request object to use for the request.              |


### Response

**[T.nilable(Operations::CreateUnifiedConnectionResponse)](../../models/operations/createunifiedconnectionresponse.md)**


## get_unified_connection

Retrieve connection

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::GetUnifiedConnectionRequest.new(
  id="<ID>",
)
    
res = s.connection.get_unified_connection(id="string")

if ! res.connection.nil?
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `id`                 | *String*             | :heavy_check_mark:   | ID of the Connection |


### Response

**[T.nilable(Operations::GetUnifiedConnectionResponse)](../../models/operations/getunifiedconnectionresponse.md)**


## list_unified_connections

List all connections

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::ListUnifiedConnectionsRequest.new(
  categories=[
    Operations::Categories::ENRICH,
  ],
)
    
res = s.connection.list_unified_connections(req)

if ! res.connections.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Operations::ListUnifiedConnectionsRequest](../../models/operations/listunifiedconnectionsrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |


### Response

**[T.nilable(Operations::ListUnifiedConnectionsResponse)](../../models/operations/listunifiedconnectionsresponse.md)**


## patch_unified_connection

Update connection

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::PatchUnifiedConnectionRequest.new(
  id="<ID>",
  connection=Shared::Connection.new(
    auth=Shared::PropertyConnectionAuth.new(
      emails=[
        "string",
      ],
      meta=Shared::PropertyPropertyConnectionAuthMeta.new(),
      other_auth_info=[
        "string",
      ],
    ),
    categories=[
      Shared::PropertyConnectionCategories::MARTECH,
    ],
    cursors_cache=[
      Shared::Undefined.new(),
    ],
    integration_type="string",
    permissions=[
      Shared::PropertyConnectionPermissions::MARTECH_LIST_READ,
    ],
  ),
)
    
res = s.connection.patch_unified_connection(id="string", connection=Shared::Connection.new(
    auth=Shared::PropertyConnectionAuth.new(
      emails=[
        "string",
      ],
      meta=Shared::PropertyPropertyConnectionAuthMeta.new(),
      other_auth_info=[
        "string",
      ],
    ),
    categories=[
      Shared::PropertyConnectionCategories::ACCOUNTING,
    ],
    cursors_cache=[
      Shared::Undefined.new(),
    ],
    integration_type="string",
    permissions=[
      Shared::PropertyConnectionPermissions::TICKETING_TICKET_WRITE,
    ],
  ))

if ! res.connection.nil?
  # handle response
end

```

### Parameters

| Parameter                                                            | Type                                                                 | Required                                                             | Description                                                          |
| -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- |
| `id`                                                                 | *String*                                                             | :heavy_check_mark:                                                   | ID of the Connection                                                 |
| `connection`                                                         | [Shared::Connection](../../models/shared/connection.md)              | :heavy_minus_sign:                                                   | A connection represents a specific authentication of an integration. |


### Response

**[T.nilable(Operations::PatchUnifiedConnectionResponse)](../../models/operations/patchunifiedconnectionresponse.md)**


## remove_unified_connection

Remove connection

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::RemoveUnifiedConnectionRequest.new(
  id="<ID>",
)
    
res = s.connection.remove_unified_connection(id="string")

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `id`                 | *String*             | :heavy_check_mark:   | ID of the Connection |


### Response

**[T.nilable(Operations::RemoveUnifiedConnectionResponse)](../../models/operations/removeunifiedconnectionresponse.md)**


## update_unified_connection

Update connection

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::UpdateUnifiedConnectionRequest.new(
  id="<ID>",
  connection=Shared::Connection.new(
    auth=Shared::PropertyConnectionAuth.new(
      emails=[
        "string",
      ],
      meta=Shared::PropertyPropertyConnectionAuthMeta.new(),
      other_auth_info=[
        "string",
      ],
    ),
    categories=[
      Shared::PropertyConnectionCategories::TICKETING,
    ],
    cursors_cache=[
      Shared::Undefined.new(),
    ],
    integration_type="string",
    permissions=[
      Shared::PropertyConnectionPermissions::CRM_DEAL_READ,
    ],
  ),
)
    
res = s.connection.update_unified_connection(id="string", connection=Shared::Connection.new(
    auth=Shared::PropertyConnectionAuth.new(
      emails=[
        "string",
      ],
      meta=Shared::PropertyPropertyConnectionAuthMeta.new(),
      other_auth_info=[
        "string",
      ],
    ),
    categories=[
      Shared::PropertyConnectionCategories::ACCOUNTING,
    ],
    cursors_cache=[
      Shared::Undefined.new(),
    ],
    integration_type="string",
    permissions=[
      Shared::PropertyConnectionPermissions::MARTECH_MEMBER_READ,
    ],
  ))

if ! res.connection.nil?
  # handle response
end

```

### Parameters

| Parameter                                                            | Type                                                                 | Required                                                             | Description                                                          |
| -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- |
| `id`                                                                 | *String*                                                             | :heavy_check_mark:                                                   | ID of the Connection                                                 |
| `connection`                                                         | [Shared::Connection](../../models/shared/connection.md)              | :heavy_minus_sign:                                                   | A connection represents a specific authentication of an integration. |


### Response

**[T.nilable(Operations::UpdateUnifiedConnectionResponse)](../../models/operations/updateunifiedconnectionresponse.md)**

