# Unified


### Available Operations

* [create_unified_connection](#create_unified_connection) - Create connection
* [create_unified_webhook](#create_unified_webhook) - Create webhook subscription
* [get_unified_apicall](#get_unified_apicall) - Retrieve specific API Call by its ID
* [get_unified_connection](#get_unified_connection) - Retrieve connection
* [get_unified_integration](#get_unified_integration) - Retrieve an integration
* [get_unified_integration_auth](#get_unified_integration_auth) - Create connection indirectly
* [get_unified_webhook](#get_unified_webhook) - Retrieve webhook by its ID
* [list_unified_apicalls](#list_unified_apicalls) - Returns API Calls
* [list_unified_connections](#list_unified_connections) - List all connections
* [list_unified_integration_workspaces](#list_unified_integration_workspaces) - Returns all activated integrations in a workspace
* [list_unified_integrations](#list_unified_integrations) - Returns all integrations
* [list_unified_webhooks](#list_unified_webhooks) - Returns all registered webhooks
* [patch_unified_connection](#patch_unified_connection) - Update connection
* [remove_unified_connection](#remove_unified_connection) - Remove connection
* [remove_unified_webhook](#remove_unified_webhook) - Remove webhook subscription
* [update_unified_connection](#update_unified_connection) - Update connection

## create_unified_connection

Create connection

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
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
    
res = s.unified.create_unified_connection(req)

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


## create_unified_webhook

To maintain compatibility with the webhooks specification and Zapier webhooks, only the hook_url field is required in the payload when creating a Webhook.  When updated/new objects are found, the array of objects will be POSTed to the hook_url with the paramater hookId=<hookId>. The data payload received by your server is described at https://docs.unified.to/unified/overview

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::CreateUnifiedWebhookRequest.new(
  connection_id="string",
  object="string",
  webhook=Shared::Webhook.new(
    connection_id="string",
    events=[
      Shared::PropertyWebhookEvents::CREATED,
    ],
    hook_url="string",
    integration_type="string",
    interval=188.12,
    object_type=Shared::ObjectType::CRM_DEAL,
    subscriptions=[
      "string",
    ],
    workspace_id="string",
  ),
  events=[
    Operations::Events::CREATED,
  ],
)
    
res = s.unified.create_unified_webhook(connection_id="string", object="string", webhook=Shared::Webhook.new(
    connection_id="string",
    events=[
      Shared::PropertyWebhookEvents::UPDATED,
    ],
    hook_url="string",
    integration_type="string",
    interval=5349.08,
    object_type=Shared::ObjectType::MARTECH_LIST,
    subscriptions=[
      "string",
    ],
    workspace_id="string",
  ), events=[
    Operations::Events::CREATED,
  ])

if ! res.webhook.nil?
  # handle response
end

```

### Parameters

| Parameter                                                         | Type                                                              | Required                                                          | Description                                                       |
| ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- |
| `connection_id`                                                   | *String*                                                          | :heavy_check_mark:                                                | ID of the connection                                              |
| `object`                                                          | *String*                                                          | :heavy_check_mark:                                                | The object to subscribe to                                        |
| `webhook`                                                         | [Shared::Webhook](../../models/shared/webhook.md)                 | :heavy_minus_sign:                                                | N/A                                                               |
| `events`                                                          | T::Array<[Operations::Events](../../models/operations/events.md)> | :heavy_minus_sign:                                                | Which events to subscribe to.                                     |


### Response

**[T.nilable(Operations::CreateUnifiedWebhookResponse)](../../models/operations/createunifiedwebhookresponse.md)**


## get_unified_apicall

Retrieve specific API Call by its ID

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::GetUnifiedApicallRequest.new(
  id="<ID>",
)
    
res = s.unified.get_unified_apicall(id="string")

if ! res.api_call.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `id`               | *String*           | :heavy_check_mark: | ID of the Apicall  |


### Response

**[T.nilable(Operations::GetUnifiedApicallResponse)](../../models/operations/getunifiedapicallresponse.md)**


## get_unified_connection

Retrieve connection

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::GetUnifiedConnectionRequest.new(
  id="<ID>",
)
    
res = s.unified.get_unified_connection(id="string")

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


## get_unified_integration

Retrieve an integration

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::GetUnifiedIntegrationRequest.new(
  integration_type="string",
)
    
res = s.unified.get_unified_integration(integration_type="string")

if ! res.integration.nil?
  # handle response
end

```

### Parameters

| Parameter                         | Type                              | Required                          | Description                       |
| --------------------------------- | --------------------------------- | --------------------------------- | --------------------------------- |
| `integration_type`                | *String*                          | :heavy_check_mark:                | Type of the supported integration |


### Response

**[T.nilable(Operations::GetUnifiedIntegrationResponse)](../../models/operations/getunifiedintegrationresponse.md)**


## get_unified_integration_auth

Returns an authorization URL for the specified integration.  Once a successful authorization occurs, a new connection is created.

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::GetUnifiedIntegrationAuthRequest.new(
  integration_type="string",
  scopes=[
    Operations::Scopes::HRIS_EMPLOYEE_WRITE,
  ],
  workspace_id="string",
)
    
res = s.unified.get_unified_integration_auth(req)

if ! res.res.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Operations::GetUnifiedIntegrationAuthRequest](../../models/operations/getunifiedintegrationauthrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |


### Response

**[T.nilable(Operations::GetUnifiedIntegrationAuthResponse)](../../models/operations/getunifiedintegrationauthresponse.md)**


## get_unified_webhook

Retrieve webhook by its ID

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::GetUnifiedWebhookRequest.new(
  id="<ID>",
)
    
res = s.unified.get_unified_webhook(id="string")

if ! res.webhook.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `id`               | *String*           | :heavy_check_mark: | ID of the Webhook  |


### Response

**[T.nilable(Operations::GetUnifiedWebhookResponse)](../../models/operations/getunifiedwebhookresponse.md)**


## list_unified_apicalls

Returns API Calls

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::ListUnifiedApicallsRequest.new()
    
res = s.unified.list_unified_apicalls(req)

if ! res.api_calls.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Operations::ListUnifiedApicallsRequest](../../models/operations/listunifiedapicallsrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |


### Response

**[T.nilable(Operations::ListUnifiedApicallsResponse)](../../models/operations/listunifiedapicallsresponse.md)**


## list_unified_connections

List all connections

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::ListUnifiedConnectionsRequest.new(
  categories=[
    Operations::Categories::ENRICH,
  ],
)
    
res = s.unified.list_unified_connections(req)

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


## list_unified_integration_workspaces

No authentication required as this is to be used by front-end interface

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::ListUnifiedIntegrationWorkspacesRequest.new(
  categories=[
    Operations::QueryParamCategories::TICKETING,
  ],
  workspace_id="string",
)
    
res = s.unified.list_unified_integration_workspaces(req)

if ! res.integrations.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                 | Type                                                                                                                      | Required                                                                                                                  | Description                                                                                                               |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                 | [Operations::ListUnifiedIntegrationWorkspacesRequest](../../models/operations/listunifiedintegrationworkspacesrequest.md) | :heavy_check_mark:                                                                                                        | The request object to use for the request.                                                                                |


### Response

**[T.nilable(Operations::ListUnifiedIntegrationWorkspacesResponse)](../../models/operations/listunifiedintegrationworkspacesresponse.md)**


## list_unified_integrations

Returns all integrations

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::ListUnifiedIntegrationsRequest.new(
  categories=[
    Operations::ListUnifiedIntegrationsQueryParamCategories::AUTH,
  ],
)
    
res = s.unified.list_unified_integrations(req)

if ! res.integrations.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Operations::ListUnifiedIntegrationsRequest](../../models/operations/listunifiedintegrationsrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |


### Response

**[T.nilable(Operations::ListUnifiedIntegrationsResponse)](../../models/operations/listunifiedintegrationsresponse.md)**


## list_unified_webhooks

Returns all registered webhooks

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::ListUnifiedWebhooksRequest.new()
    
res = s.unified.list_unified_webhooks(req)

if ! res.webhooks.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Operations::ListUnifiedWebhooksRequest](../../models/operations/listunifiedwebhooksrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |


### Response

**[T.nilable(Operations::ListUnifiedWebhooksResponse)](../../models/operations/listunifiedwebhooksresponse.md)**


## patch_unified_connection

Update connection

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
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
    
res = s.unified.patch_unified_connection(id="string", connection=Shared::Connection.new(
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
    jwt="",
  )
)


req = Operations::RemoveUnifiedConnectionRequest.new(
  id="<ID>",
)
    
res = s.unified.remove_unified_connection(id="string")

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


## remove_unified_webhook

Remove webhook subscription

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::RemoveUnifiedWebhookRequest.new(
  id="<ID>",
)
    
res = s.unified.remove_unified_webhook(id="string")

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `id`               | *String*           | :heavy_check_mark: | ID of the Webhook  |


### Response

**[T.nilable(Operations::RemoveUnifiedWebhookResponse)](../../models/operations/removeunifiedwebhookresponse.md)**


## update_unified_connection

Update connection

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
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
    
res = s.unified.update_unified_connection(id="string", connection=Shared::Connection.new(
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

