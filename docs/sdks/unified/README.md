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
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Shared::Connection.new(
  request=Shared::Connection.new(
    auth=Shared::PropertyConnectionAuth.new(
      access_token="string",
      api_url="string",
      app_id="string",
      authorize_url="string",
      client_id="string",
      client_secret="string",
      consumer_key="string",
      consumer_secret="string",
      emails=.new[
        "string",
      ],
      expires_in=9168.17,
      expiry_date=DateTime.iso8601('2022-04-10T21:22:48.918Z'),
      key="<key>",
      meta=Shared::PropertyPropertyConnectionAuthMeta.new(),
      name="string",
      other_auth_info=.new[
        "string",
      ],
      pem="string",
      refresh_token="string",
      refresh_token_expires_date=DateTime.iso8601('2022-04-18T01:30:06.276Z'),
      refresh_token_expires_in=6876.67,
      state="string",
      token="string",
      token_url="string",
    ),
    auth_aws_arn="string",
    categories=.new[
      Shared::PropertyConnectionCategories::AUTH,
    ],
    created_at=DateTime.iso8601('2022-07-03T20:48:03.468Z'),
    environment="string",
    external_xref="string",
    id="<ID>",
    integration_type="string",
    is_paused=false,
    permissions=.new[
      Shared::PropertyConnectionPermissions::ATS_JOB_READ,
    ],
    updated_at=DateTime.iso8601('2023-06-29T03:45:15.691Z'),
    workspace_id="string",
  ),
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

To maintain compatibility with the webhooks specification and Zapier webhooks, only the hook_url field is required in the payload when creating a Webhook.  When updated/new objects are found, the array of objects will be POSTed to the hook_url with the paramater hookId=<hookId>.

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::CreateUnifiedWebhookRequest.new(
  path_params=Operations::CreateUnifiedWebhookRequest.new(
    connection_id="string",
    object="string",
    webhook=Shared::Webhook.new(
      checked_at=DateTime.iso8601('2022-12-23T11:16:21.687Z'),
      connection_id="string",
      created_at=DateTime.iso8601('2021-01-21T14:22:58.807Z'),
      environment="string",
      events=.new[
        Shared::PropertyWebhookEvents::UPDATED,
      ],
      hook_url="string",
      id="<ID>",
      include_raw=false,
      integration_type="string",
      interval=6142.55,
      object_type=Shared::ObjectType::ACCOUNTING_PAYMENT,
      subscriptions=.new[
        "string",
      ],
      updated_at=DateTime.iso8601('2022-08-09T17:23:28.216Z'),
      workspace_id="string",
    ),
    events=.new[
      Operations::Events::CREATED,
    ],
  ),
  query_params=Operations::CreateUnifiedWebhookRequest.new(
    connection_id="string",
    object="string",
    webhook=Shared::Webhook.new(
      checked_at=DateTime.iso8601('2023-11-07T21:10:47.579Z'),
      connection_id="string",
      created_at=DateTime.iso8601('2023-10-20T23:24:59.213Z'),
      environment="string",
      events=.new[
        Shared::PropertyWebhookEvents::UPDATED,
      ],
      hook_url="string",
      id="<ID>",
      include_raw=false,
      integration_type="string",
      interval=4025.83,
      object_type=Shared::ObjectType::TICKETING_TICKET,
      subscriptions=.new[
        "string",
      ],
      updated_at=DateTime.iso8601('2023-09-14T01:41:43.779Z'),
      workspace_id="string",
    ),
    events=.new[
      Operations::Events::UPDATED,
    ],
  ),
  webhook=Shared::Webhook.new(
    checked_at=DateTime.iso8601('2021-08-29T04:56:01.063Z'),
    connection_id="string",
    created_at=DateTime.iso8601('2021-01-01T09:14:40.792Z'),
    environment="string",
    events=.new[
      Shared::PropertyWebhookEvents::UPDATED,
    ],
    hook_url="string",
    id="<ID>",
    include_raw=false,
    integration_type="string",
    interval=4544.84,
    object_type=Shared::ObjectType::CRM_FILE,
    subscriptions=.new[
      "string",
    ],
    updated_at=DateTime.iso8601('2023-02-22T14:23:57.210Z'),
    workspace_id="string",
  ),
)
    
res = s.unified.create_unified_webhook(req)

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
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::GetUnifiedApicallRequest.new(
  path_params=Operations::GetUnifiedApicallRequest.new(
    id="<ID>",
  ),
)
    
res = s.unified.get_unified_apicall(req)

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
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::GetUnifiedConnectionRequest.new(
  path_params=Operations::GetUnifiedConnectionRequest.new(
    id="<ID>",
  ),
)
    
res = s.unified.get_unified_connection(req)

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
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::GetUnifiedIntegrationRequest.new(
  path_params=Operations::GetUnifiedIntegrationRequest.new(
    integration_type="string",
  ),
)
    
res = s.unified.get_unified_integration(req)

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
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::GetUnifiedIntegrationAuthRequest.new(
  path_params=Operations::GetUnifiedIntegrationAuthRequest.new(
    env="string",
    external_xref="string",
    failure_redirect="string",
    integration_type="string",
    lang="string",
    redirect=false,
    scopes=.new[
      Operations::Scopes::HRIS_EMPLOYEE_WRITE,
    ],
    state="string",
    subdomain="string",
    success_redirect="string",
    workspace_id="string",
  ),
  query_params=Operations::GetUnifiedIntegrationAuthRequest.new(
    env="string",
    external_xref="string",
    failure_redirect="string",
    integration_type="string",
    lang="string",
    redirect=false,
    scopes=.new[
      Operations::Scopes::CRM_LEAD_WRITE,
    ],
    state="string",
    subdomain="string",
    success_redirect="string",
    workspace_id="string",
  ),
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
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::GetUnifiedWebhookRequest.new(
  path_params=Operations::GetUnifiedWebhookRequest.new(
    id="<ID>",
  ),
)
    
res = s.unified.get_unified_webhook(req)

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
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::ListUnifiedApicallsRequest.new(
  query_params=Operations::ListUnifiedApicallsRequest.new(
    connection_id="string",
    created_lte=DateTime.iso8601('2023-08-09T20:57:25.500Z'),
    env="string",
    error=false,
    external_xref="string",
    integration_type="string",
    limit=494.66,
    offset=5267.27,
    order="string",
    sort="string",
    updated_gte=DateTime.iso8601('2023-01-09T10:22:39.053Z'),
  ),
)
    
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
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::ListUnifiedConnectionsRequest.new(
  query_params=Operations::ListUnifiedConnectionsRequest.new(
    categories=.new[
      Operations::Categories::ENRICH,
    ],
    env="string",
    external_xref="string",
    limit=9638.08,
    offset=15.12,
    order="string",
    sort="string",
    updated_gte=DateTime.iso8601('2021-06-20T10:15:04.986Z'),
  ),
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
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::ListUnifiedIntegrationWorkspacesRequest.new(
  path_params=Operations::ListUnifiedIntegrationWorkspacesRequest.new(
    active=false,
    categories=.new[
      Operations::QueryParamCategories::TICKETING,
    ],
    env="string",
    limit=9072.99,
    offset=5948.93,
    summary=false,
    updated_gte="string",
    workspace_id="string",
  ),
  query_params=Operations::ListUnifiedIntegrationWorkspacesRequest.new(
    active=false,
    categories=.new[
      Operations::QueryParamCategories::AUTH,
    ],
    env="string",
    limit=4075.93,
    offset=2858.96,
    summary=false,
    updated_gte="string",
    workspace_id="string",
  ),
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
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::ListUnifiedIntegrationsRequest.new(
  query_params=Operations::ListUnifiedIntegrationsRequest.new(
    active=false,
    categories=.new[
      Operations::ListUnifiedIntegrationsQueryParamCategories::AUTH,
    ],
    env="string",
    limit=7382.58,
    offset=353.99,
    order="string",
    sort="string",
    summary=false,
    updated_gte="string",
  ),
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
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::ListUnifiedWebhooksRequest.new(
  query_params=Operations::ListUnifiedWebhooksRequest.new(
    env="string",
    limit=1162.24,
    object="string",
    offset=5094.7,
    order="string",
    sort="string",
    updated_gte=DateTime.iso8601('2021-04-20T14:39:47.451Z'),
  ),
)
    
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
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::PatchUnifiedConnectionRequest.new(
  path_params=Operations::PatchUnifiedConnectionRequest.new(
    id="<ID>",
    connection=Shared::Connection.new(
      auth=Shared::PropertyConnectionAuth.new(
        access_token="string",
        api_url="string",
        app_id="string",
        authorize_url="string",
        client_id="string",
        client_secret="string",
        consumer_key="string",
        consumer_secret="string",
        emails=.new[
          "string",
        ],
        expires_in=6565.39,
        expiry_date=DateTime.iso8601('2023-02-09T01:57:38.348Z'),
        key="<key>",
        meta=Shared::PropertyPropertyConnectionAuthMeta.new(),
        name="string",
        other_auth_info=.new[
          "string",
        ],
        pem="string",
        refresh_token="string",
        refresh_token_expires_date=DateTime.iso8601('2023-12-29T01:22:10.837Z'),
        refresh_token_expires_in=8456.09,
        state="string",
        token="string",
        token_url="string",
      ),
      auth_aws_arn="string",
      categories=.new[
        Shared::PropertyConnectionCategories::ATS,
      ],
      created_at=DateTime.iso8601('2021-05-09T04:29:35.007Z'),
      environment="string",
      external_xref="string",
      id="<ID>",
      integration_type="string",
      is_paused=false,
      permissions=.new[
        Shared::PropertyConnectionPermissions::ACCOUNTING_PAYMENT_READ,
      ],
      updated_at=DateTime.iso8601('2022-07-09T00:35:16.005Z'),
      workspace_id="string",
    ),
  ),
  connection=Shared::Connection.new(
    auth=Shared::PropertyConnectionAuth.new(
      access_token="string",
      api_url="string",
      app_id="string",
      authorize_url="string",
      client_id="string",
      client_secret="string",
      consumer_key="string",
      consumer_secret="string",
      emails=.new[
        "string",
      ],
      expires_in=3733.96,
      expiry_date=DateTime.iso8601('2023-06-03T17:57:56.069Z'),
      key="<key>",
      meta=Shared::PropertyPropertyConnectionAuthMeta.new(),
      name="string",
      other_auth_info=.new[
        "string",
      ],
      pem="string",
      refresh_token="string",
      refresh_token_expires_date=DateTime.iso8601('2023-03-09T18:14:07.585Z'),
      refresh_token_expires_in=9653.77,
      state="string",
      token="string",
      token_url="string",
    ),
    auth_aws_arn="string",
    categories=.new[
      Shared::PropertyConnectionCategories::CRM,
    ],
    created_at=DateTime.iso8601('2022-06-01T22:20:44.897Z'),
    environment="string",
    external_xref="string",
    id="<ID>",
    integration_type="string",
    is_paused=false,
    permissions=.new[
      Shared::PropertyConnectionPermissions::ATS_APPLICATION_READ,
    ],
    updated_at=DateTime.iso8601('2021-01-28T14:34:49.486Z'),
    workspace_id="string",
  ),
)
    
res = s.unified.patch_unified_connection(req)

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
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::RemoveUnifiedConnectionRequest.new(
  path_params=Operations::RemoveUnifiedConnectionRequest.new(
    id="<ID>",
  ),
)
    
res = s.unified.remove_unified_connection(req)

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
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::RemoveUnifiedWebhookRequest.new(
  path_params=Operations::RemoveUnifiedWebhookRequest.new(
    id="<ID>",
  ),
)
    
res = s.unified.remove_unified_webhook(req)

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
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::UpdateUnifiedConnectionRequest.new(
  path_params=Operations::UpdateUnifiedConnectionRequest.new(
    id="<ID>",
    connection=Shared::Connection.new(
      auth=Shared::PropertyConnectionAuth.new(
        access_token="string",
        api_url="string",
        app_id="string",
        authorize_url="string",
        client_id="string",
        client_secret="string",
        consumer_key="string",
        consumer_secret="string",
        emails=.new[
          "string",
        ],
        expires_in=7910.65,
        expiry_date=DateTime.iso8601('2022-07-13T00:55:19.590Z'),
        key="<key>",
        meta=Shared::PropertyPropertyConnectionAuthMeta.new(),
        name="string",
        other_auth_info=.new[
          "string",
        ],
        pem="string",
        refresh_token="string",
        refresh_token_expires_date=DateTime.iso8601('2023-12-14T16:56:17.383Z'),
        refresh_token_expires_in=7427.91,
        state="string",
        token="string",
        token_url="string",
      ),
      auth_aws_arn="string",
      categories=.new[
        Shared::PropertyConnectionCategories::CRM,
      ],
      created_at=DateTime.iso8601('2021-03-09T18:14:10.859Z'),
      environment="string",
      external_xref="string",
      id="<ID>",
      integration_type="string",
      is_paused=false,
      permissions=.new[
        Shared::PropertyConnectionPermissions::UC_CALL_READ,
      ],
      updated_at=DateTime.iso8601('2022-06-09T04:40:33.286Z'),
      workspace_id="string",
    ),
  ),
  connection=Shared::Connection.new(
    auth=Shared::PropertyConnectionAuth.new(
      access_token="string",
      api_url="string",
      app_id="string",
      authorize_url="string",
      client_id="string",
      client_secret="string",
      consumer_key="string",
      consumer_secret="string",
      emails=.new[
        "string",
      ],
      expires_in=609.6,
      expiry_date=DateTime.iso8601('2022-01-09T08:00:07.180Z'),
      key="<key>",
      meta=Shared::PropertyPropertyConnectionAuthMeta.new(),
      name="string",
      other_auth_info=.new[
        "string",
      ],
      pem="string",
      refresh_token="string",
      refresh_token_expires_date=DateTime.iso8601('2022-03-20T09:47:08.318Z'),
      refresh_token_expires_in=9059.39,
      state="string",
      token="string",
      token_url="string",
    ),
    auth_aws_arn="string",
    categories=.new[
      Shared::PropertyConnectionCategories::ACCOUNTING,
    ],
    created_at=DateTime.iso8601('2021-09-01T18:42:56.636Z'),
    environment="string",
    external_xref="string",
    id="<ID>",
    integration_type="string",
    is_paused=false,
    permissions=.new[
      Shared::PropertyConnectionPermissions::CRM_DEAL_READ,
    ],
    updated_at=DateTime.iso8601('2021-08-21T06:44:42.952Z'),
    workspace_id="string",
  ),
)
    
res = s.unified.update_unified_connection(req)

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

